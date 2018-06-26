# Authentication

## Login

***Request***

- Path: `/login`
- Method: `POST`

| Parameter | Required? | Type   | Description       |
|-----------|-----------|--------|-------------------|
| email     | YES       | string | User 's email     |
| password  | YES       | string | User ' password   |

```shell
curl -v -X POST <%= BASE_PATH %>/login \
     --data-urlencode "email=user@wealth-park.com" \
     --data-urlencode "password=Password123" \
```

***Response***

| Field         | Type    | Description                                                                           |
|---------------|---------|---------------------------------------------------------------------------------------|
| access_token  | string  | Access-token to attach to requests 's headers/inline-paramterers                      |
| expire_at     | integer | When this access-token will expire. In epoch time.                                    |
| refresh_token | string  | Token to get new access-token without asking user to input username & password again. |
| priviledge    | string  | Priviledge of account. There is only one valid value for this field: `standard`       |
| unique_id     | integer | User 's unique id                                                                     |

> Sample response

```json
{
    "err": 0,
    "access_token": "108210a14e204b15aa473443d8af60e5",
    "expire_at": 1453985777,
    "refresh_token": "5f07eea1bfb641dd807cdf90bbba8761",
    "priviledge": "standard",
    "unique_id": 100
}
```

## Refresh access-token

***Request***

- Path: `/refresh_access_token`
- Method: `POST`

| Parameter     | Required? | Type   | Description             |
|---------------|-----------|--------|-------------------------|
| refresh_token | YES       | string | Retrieved from `/login` |

```shell
curl -v -X POST <%= BASE_PATH %>/refresh_access_token \
     --data-urlencode "refresh_token=5f07eea1bfb641dd807cdf90bbba8761"
```

***Response***

| Field         | Type    | Description       |
|---------------|---------|-------------------|
| access_token  | string  | New access-token  |
| expire_at     | integer | New expire-at     |
| refresh_token | string  | New refresh-token |

> Sample response

```json
{
    "err": 0,
    "access_token": "108210a14e204b15aa473443d8af60e5",
    "expire_at": 1453985777,
    "refresh_token": "5f07eea1bfb641dd807cdf90bbba8761",
}
```
