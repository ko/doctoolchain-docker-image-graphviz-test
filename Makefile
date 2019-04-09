test_pre:
	image_name=rdmueller/doctoolchain \
						 image_version=v1.1.0 \
						 ./doctoolchain.sh generatePDF

test_fix:
	image_name=local.test \
						 image_version=latest \
						 ./doctoolchain.sh generatePDF

clean:
	rm -rf build
