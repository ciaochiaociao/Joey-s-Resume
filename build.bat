# latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf
latexmk -synctex=1 -interaction=batchmode -pdf && latexmk -c && copy main.pdf Chiao-Wei_Hsu_resume.pdf
