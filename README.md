# IP Location CLI Tool

This is a command-line interface (CLI) tool that queries the IPStack
API to obtain the latitude and longitude of a given IP address.

## API Key

You need to sign up for a free API access key from the [IPStack
website](https://ipstack.com). Set the API access key as an environment
variable:

```bash
export IP_LOCATION_API_KEY=<api_key>
```

Replace `<api_key>` with your actual IPStack API access key.

## CLI Usage

The script can be run directly on Mac or Linux provided Python 3
and the requests module is available.

Run the CLI program as follows:

```bash
./ip_location <ip_address>
```

Replace `<ip_address>` with the IP address you want to query.

## Docker Usage

If you want to run the tool as a Docker container, follow these steps:

1. Build the Docker image:
	```bash
	docker build -t ip_location_cli .
	```

2. Run the Docker container:
	```bash
	docker run -e IP_LOCATION_API_KEY ip_location_cli ip_location <ip_address>
	```
	
Replace `<ip_address>` with the IP address you want to query.


## Security Considerations

* API Key Protection: Even though this is a simple example, the API key
is passed as an environment variable to exposure in public repos or on
the command line.  Ensure that your API key is kept confidential.

* Error Handling: Implement error handling to deal with cases where the
API request fails or returns unexpected data will cause the program to
exit with non-zero status.

* Input sanitisation: The IP address is validated to prevent transmission
of malformed or malicious data to the IPStack API.
