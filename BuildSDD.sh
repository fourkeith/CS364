#!/bin/sh

dir_project="SDD"
dir_sep="/"
final_document_name="CS364_SDD_Document.md"
files_to_add=(	
		"~i Title.md"
		"~ii Authors.md"
		"~iii Revision History.md" 
		"~iv Table of Contents.md"
		"~v List of Figures.md" 
		"1.0.0.0.md"
		"1.1.0.0.md"
		"1.2.0.0.md"
		"1.3.0.0.md"
		"1.4.0.0.md"
		"1.5.0.0.md"
		"1.6.0.0.md"
		"1.7.0.0.md"
		"2.0.0.0.md"
		"2.1.0.0.md"
		"2.2.0.0.md"
		"2.3.0.0.md"
		"2.4.0.0.md"
		"2.5.0.0.md"
		"2.6.0.0.md"
		"2.7.0.0.md"
		"2.8.0.0.md"
		"3.0.0.0.md"
		"3.1.0.0.md"
		"3.2.0.0.md"
		"3.2.001.0.md"
		"3.2.002.0.md"
		"3.2.003.0.md"
		"3.2.004.0.md"
		"3.2.005.0.md"
		"3.2.006.0.md"
		"3.2.007.0.md"
		"3.2.008.0.md"
		"3.2.009.0.md"
		"3.2.010.0.md"
		"3.2.011.0.md"
		"3.2.012.0.md"
		"3.2.013.0.md"
		"3.2.014.0.md"
		"3.2.015.0.md"
		"3.2.016.0.md"
		"3.2.017.0.md"
		"3.2.018.0.md"
		"3.2.019.0.md"
		"3.2.020.0.md"
		"3.2.021.0.md"
		"3.2.022.0.md"
		"3.2.023.0.md"
		"3.2.024.0.md"
		"3.2.025.0.md"
		"3.2.026.0.md"
		"3.2.027.0.md"
		"3.2.028.0.md"
		"3.2.029.0.md"
		"3.2.030.0.md"
		"3.2.031.0.md"
		"3.2.032.0.md"
		"3.2.033.0.md"
		"3.2.034.0.md"
		"3.2.035.0.md"
		"3.2.036.0.md"
		"3.2.037.0.md"
		"3.2.038.0.md"
		"3.2.039.0.md"
		"3.2.040.0.md"
		"3.2.041.0.md"
		"3.2.042.0.md"
		"3.2.043.0.md"
		"3.2.044.0.md"
		"3.2.045.0.md"
		"3.2.046.0.md"
		"3.2.047.0.md"
		"3.2.048.0.md"
		"3.2.049.0.md"
		"3.2.050.0.md"
		"3.2.051.0.md"
		"3.2.052.0.md"
		"3.2.053.0.md"
		"3.2.054.0.md"
		"3.2.055.0.md"
		"3.2.056.0.md"
		"3.2.057.0.md"
		"3.3.0.0.md"
		"3.4.0.0.md"
		"3.5.0.0.md"
		"3.6.0.0.md"
		"3.7.0.0.md"
		"4.0.0.0.md"
		"4.1.0.0.md"
		"4.2.0.0.md"
		"4.2.001.0.md"
		"4.2.002.0.md"
		"4.2.003.0.md"
		"4.2.004.0.md"
		"4.2.005.0.md"
		"4.2.006.0.md"
		"4.2.007.0.md"
		"4.2.008.0.md"
		"4.2.009.0.md"
		"4.2.010.0.md"
		"4.2.011.0.md"
		"4.2.012.0.md"
		"4.2.013.0.md"
		"4.2.014.0.md"
		"4.2.015.0.md"
		"4.2.016.0.md"
		"4.2.017.0.md"
		"4.2.018.0.md"
		"4.2.019.0.md"
		"4.2.020.0.md"
		"4.2.021.0.md"
		"4.2.022.0.md"
		"4.2.023.0.md"
		"4.2.024.0.md"
		"4.2.025.0.md"
		"4.2.026.0.md"
		"4.2.027.0.md"
		"4.2.028.0.md"
		"4.2.029.0.md"
		"4.2.030.0.md"
		"4.2.031.0.md"
		"4.2.032.0.md"
		"4.2.033.0.md"
		"4.2.034.0.md"
		"4.2.035.0.md"
		"4.2.036.0.md"
		"4.2.037.0.md"
		"4.2.038.0.md"
		"4.2.039.0.md"
		"4.2.040.0.md"
		"4.2.041.0.md"
		"4.2.042.0.md"
		"4.2.043.0.md"
		"4.2.044.0.md"
		"4.2.045.0.md"
		"4.2.046.0.md"
		"4.2.047.0.md"
		"4.2.048.0.md"
		"4.2.049.0.md"
		"4.2.050.0.md"
		"4.2.051.0.md"
		"4.2.052.0.md"
		"4.2.053.0.md"
		"4.2.054.0.md"
		"4.2.055.0.md"
		"4.2.056.0.md"
		"4.2.057.0.md"
		"4.3.0.0.md"
		"4.4.0.0.md"
		"4.5.0.0.md"
		"4.6.0.0.md"
		"4.7.0.0.md"
		"5.0.0.0.md"
		"5.1.0.0.md"
		"5.2.0.0.md"
		"5.3.0.0.md"
		"6.0.0.0.md"
		"6.1.0.0.md"
		"6.2.0.0.md"
		"6.2.1.0.md"
		"6.2.4.0.md"
		"6.2.6.0.md"
		"6.2.8.0.md"
		"6.2.9.0.md"
		"6.2.10.0.md"
		"6.2.16.0.md"
		"6.2.20.0.md"
		"6.2.25.0.md"
		"6.2.26.0.md"
		"Index.md"
		)

if [ -f "${dir_project}${dir_sep}${final_document_name}" ]; then
	rm "${dir_project}${dir_sep}${final_document_name}"
fi

for file in "${files_to_add[@]}"
do
	if [ -f "${dir_project}${dir_sep}${file}" ]; then
		cat "${dir_project}${dir_sep}${file}" >> "${dir_project}${dir_sep}${final_document_name}"
	else
		echo "WARNING: File named \"${file}\" not find in directory \"${dir_project}\""
	fi
done

echo "Build Complete"
