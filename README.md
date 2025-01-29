# Explore different providers

This course is available for multiple cloud providers. Choose your preferred platform:

- [Hello Google Cloud](https://github.com/Oxford-Research-Cloud-Competency-Centre/Hello-gcloud)
- [Hello Microsoft Azure](https://github.com/Oxford-Research-Cloud-Competency-Centre/Hello-mazure)
- [Hello Amazon Web Services](https://github.com/Oxford-Research-Cloud-Competency-Centre/Hello-aws) (⭐ Most popular)
- Hello Oracle Cloud *(Coming Soon)*
- Hello IBM Cloud *(Coming Soon)*
- Hello Tencent Cloud *(Coming Soon)*
- Hello Alibaba Cloud *(Coming Soon)*
- Hello Baidu AI Cloud *(Coming Soon)*

*Note: Entries marked with "Coming Soon" are planned versions that are currently under development.*

# Instructions

Step 1. Fork (or make a copy of) this repository

***

Step 2. Go to the Google Cloud Console and type "Cloud Run" in the search bar

![Step 2](README_images/img1.png)

***

Step 3. Go to Deploy Container -> Service

![Step 3](README_images/img2.png)

***

Step 4. Select "Continuously deploy from a repository (source or function)" then "Set up with Cloud Build" 

![Step 4](README_images/img3.png)

***

Step 5. Select the git repository 

![Step 5](README_images/img4.png)

***

Step 6. Select the "Google Cloud's buildpacks" option. Leave all the parameters empty: Cloud Run will figure out on its own that you are using Python. 

![Step 6](README_images/img5.png)

***

Step 7. Select the region (europe-west2 in this case), allow unauthenticated invocations, allow internet traffic, then press Create

![Step 7](README_images/img6.png)

***

Voilà! Access the URL.

![Voilà](README_images/img7.png)

# Going further

## Modifying the code

You commit some changes to your repository and watch how the service is updated automatically. 

## Cleaning up

Don't forget to delete the service when you are done. 

![Deleting a service](README_images/delete.png)

## Adding an API endpoint

Add the following code in app.py 

```	
@app.route("/hello_api")
def hello_api():
    return {
		"name": "Wrinkle Five Star",
		"species": "Duck",
		"breed": "American Pekin",
		"hatching_date": "2020-09-09",
		"sex": "Male"
    }
```

Then test your endpoint

![API endpoint](README_images/hello_api.png)


