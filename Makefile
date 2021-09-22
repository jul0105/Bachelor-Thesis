target = report


# .DEFAULT_GOAL := help
# .PHONY: help
# help: ## Affiche cette aide
# 	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.PHONY: build
build: ## Démarre toute l'application sur docker
	pdflatex --shell-escape $(target).tex
	pdflatex --shell-escape $(target).tex
	pdflatex --shell-escape $(target).tex


.PHONY: clean
clean: ## Démarre toute l'application sur docker
	rm *.aux -f
	rm *.log -f
	rm *.out -f
	rm *.toc -f 
	rm *.synctex.gz -f
	rm *.bbl -f
	rm *.blg -f
	rm *.lof -f
	rm *.lot -f
	rm *-*/*.aux -f
	rm *-*/*.log -f
	rm *-*/*.out -f
	rm *-*/*.toc -f 
	rm *-*/*.synctex.gz -f
	rm *-*/*.bbl -f
	rm *-*/*.blg -f
	rm *-*/*.lof -f
	rm *-*/*.lot -f
	rm *-*/*.pdf -f
