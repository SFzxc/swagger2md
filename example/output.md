Swagger Petstore
======
**Version:** 1.0.0

**Description:** This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

### /pet

---
##### ***POST***
**Parameters**

```
{
  "id": {
    "type": "integer",
    "format": "int64"
  },
  "category": {
    "$ref": "#/definitions/Category"
  },
  "name": {
    "type": "string",
    "example": "doggie"
  },
  "photoUrls": {
    "type": "array",
    "xml": {
      "name": "photoUrl",
      "wrapped": true
    },
    "items": {
      "type": "string"
    }
  },
  "tags": {
    "type": "array",
    "xml": {
      "name": "tag",
      "wrapped": true
    },
    "items": {
      "$ref": "#/definitions/Tag"
    }
  },
  "status": {
    "type": "string",
    "description": "pet status in the store",
    "enum": [
      "available",
      "pending",
      "sold"
    ]
  }
}
```
**Responses**

```
{
  "405": {
    "description": "Invalid input"
  }
}
```
##### ***PUT***
**Parameters**

```
{
  "id": {
    "type": "integer",
    "format": "int64"
  },
  "category": {
    "$ref": "#/definitions/Category"
  },
  "name": {
    "type": "string",
    "example": "doggie"
  },
  "photoUrls": {
    "type": "array",
    "xml": {
      "name": "photoUrl",
      "wrapped": true
    },
    "items": {
      "type": "string"
    }
  },
  "tags": {
    "type": "array",
    "xml": {
      "name": "tag",
      "wrapped": true
    },
    "items": {
      "$ref": "#/definitions/Tag"
    }
  },
  "status": {
    "type": "string",
    "description": "pet status in the store",
    "enum": [
      "available",
      "pending",
      "sold"
    ]
  }
}
```
**Responses**

```
{
  "400": {
    "description": "Invalid ID supplied"
  },
  "404": {
    "description": "Pet not found"
  },
  "405": {
    "description": "Validation exception"
  }
}
```
### /pet/findByStatus

---
##### ***GET***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "type": "array",
      "items": {
        "$ref": "#/definitions/Pet"
      }
    }
  },
  "400": {
    "description": "Invalid status value"
  }
}
```
### /pet/findByTags

---
##### ***GET***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "type": "array",
      "items": {
        "$ref": "#/definitions/Pet"
      }
    }
  },
  "400": {
    "description": "Invalid tag value"
  }
}
```
### /pet/{petId}

---
##### ***GET***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "$ref": "#/definitions/Pet"
    }
  },
  "400": {
    "description": "Invalid ID supplied"
  },
  "404": {
    "description": "Pet not found"
  }
}
```
##### ***POST***
**Parameters**
**Responses**

```
{
  "405": {
    "description": "Invalid input"
  }
}
```
##### ***DELETE***
**Parameters**
**Responses**

```
{
  "400": {
    "description": "Invalid ID supplied"
  },
  "404": {
    "description": "Pet not found"
  }
}
```
### /pet/{petId}/uploadImage

---
##### ***POST***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "$ref": "#/definitions/ApiResponse"
    }
  }
}
```
### /store/inventory

---
##### ***GET***
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "type": "object",
      "additionalProperties": {
        "type": "integer",
        "format": "int32"
      }
    }
  }
}
```
### /store/order

---
##### ***POST***
**Parameters**

```
{
  "id": {
    "type": "integer",
    "format": "int64"
  },
  "petId": {
    "type": "integer",
    "format": "int64"
  },
  "quantity": {
    "type": "integer",
    "format": "int32"
  },
  "shipDate": {
    "type": "string",
    "format": "date-time"
  },
  "status": {
    "type": "string",
    "description": "Order Status",
    "enum": [
      "placed",
      "approved",
      "delivered"
    ]
  },
  "complete": {
    "type": "boolean",
    "default": false
  }
}
```
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "$ref": "#/definitions/Order"
    }
  },
  "400": {
    "description": "Invalid Order"
  }
}
```
### /store/order/{orderId}

---
##### ***GET***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "$ref": "#/definitions/Order"
    }
  },
  "400": {
    "description": "Invalid ID supplied"
  },
  "404": {
    "description": "Order not found"
  }
}
```
##### ***DELETE***
**Parameters**
**Responses**

```
{
  "400": {
    "description": "Invalid ID supplied"
  },
  "404": {
    "description": "Order not found"
  }
}
```
### /user

---
##### ***POST***
**Parameters**

```
{
  "id": {
    "type": "integer",
    "format": "int64"
  },
  "username": {
    "type": "string"
  },
  "firstName": {
    "type": "string"
  },
  "lastName": {
    "type": "string"
  },
  "email": {
    "type": "string"
  },
  "password": {
    "type": "string"
  },
  "phone": {
    "type": "string"
  },
  "userStatus": {
    "type": "integer",
    "format": "int32",
    "description": "User Status"
  }
}
```
**Responses**

```
{
  "default": {
    "description": "successful operation"
  }
}
```
### /user/createWithArray

---
##### ***POST***
**Parameters**

```
{
  "id": {
    "type": "integer",
    "format": "int64"
  },
  "username": {
    "type": "string"
  },
  "firstName": {
    "type": "string"
  },
  "lastName": {
    "type": "string"
  },
  "email": {
    "type": "string"
  },
  "password": {
    "type": "string"
  },
  "phone": {
    "type": "string"
  },
  "userStatus": {
    "type": "integer",
    "format": "int32",
    "description": "User Status"
  }
}
```
**Responses**

```
{
  "default": {
    "description": "successful operation"
  }
}
```
### /user/createWithList

---
##### ***POST***
**Parameters**

```
{
  "id": {
    "type": "integer",
    "format": "int64"
  },
  "username": {
    "type": "string"
  },
  "firstName": {
    "type": "string"
  },
  "lastName": {
    "type": "string"
  },
  "email": {
    "type": "string"
  },
  "password": {
    "type": "string"
  },
  "phone": {
    "type": "string"
  },
  "userStatus": {
    "type": "integer",
    "format": "int32",
    "description": "User Status"
  }
}
```
**Responses**

```
{
  "default": {
    "description": "successful operation"
  }
}
```
### /user/login

---
##### ***GET***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "type": "string"
    },
    "headers": {
      "X-Rate-Limit": {
        "type": "integer",
        "format": "int32",
        "description": "calls per hour allowed by the user"
      },
      "X-Expires-After": {
        "type": "string",
        "format": "date-time",
        "description": "date in UTC when token expires"
      }
    }
  },
  "400": {
    "description": "Invalid username/password supplied"
  }
}
```
### /user/logout

---
##### ***GET***
**Responses**

```
{
  "default": {
    "description": "successful operation"
  }
}
```
### /user/{username}

---
##### ***GET***
**Parameters**
**Responses**

```
{
  "200": {
    "description": "successful operation",
    "schema": {
      "$ref": "#/definitions/User"
    }
  },
  "400": {
    "description": "Invalid username supplied"
  },
  "404": {
    "description": "User not found"
  }
}
```
##### ***PUT***
**Parameters**
**Responses**

```
{
  "400": {
    "description": "Invalid user supplied"
  },
  "404": {
    "description": "User not found"
  }
}
```
##### ***DELETE***
**Parameters**
**Responses**

```
{
  "400": {
    "description": "Invalid username supplied"
  },
  "404": {
    "description": "User not found"
  }
}
```
