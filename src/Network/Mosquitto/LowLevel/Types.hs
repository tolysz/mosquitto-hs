
module Network.Mosquitto.LowLevel.Types
(

    Mosquitto(..)
  , MosquittoMessage(..)
  , MosquittoResult(..)
  , MosquittoLogType(..)

) where

import           Foreign.C
import           Foreign.C.String
import           Foreign.Ptr

data Mosquitto

data MosquittoMessage = MosquittoMessage {
    mid        :: CInt
  , topic      :: CString
  , payload    :: Ptr ()
  , payloadLen :: CInt
  , qos        :: CInt
  , retain     :: Bool
}

data MosquittoLogType =
    MOSQ_LOG_NONE
  | MOSQ_LOG_INFO
  | MOSQ_LOG_NOTICE
  | MOSQ_LOG_WARNING
  | MOSQ_LOG_ERR
  | MOSQ_LOG_DEBUG
  | MOSQ_LOG_SUBSCRIBE
  | MOSQ_LOG_UNSUBSCRIBE
  | MOSQ_LOG_WEBSOCKETS
  | MOSQ_LOG_ALL
  deriving (Eq, Show, Read)

instance Enum MosquittoLogType where
  fromEnum MOSQ_LOG_NONE        = 0x00
  fromEnum MOSQ_LOG_INFO        = 0x01
  fromEnum MOSQ_LOG_NOTICE      = 0x02
  fromEnum MOSQ_LOG_WARNING     = 0x04
  fromEnum MOSQ_LOG_ERR         = 0x08
  fromEnum MOSQ_LOG_DEBUG       = 0x10
  fromEnum MOSQ_LOG_SUBSCRIBE   = 0x20
  fromEnum MOSQ_LOG_UNSUBSCRIBE = 0x40
  fromEnum MOSQ_LOG_WEBSOCKETS  = 0x80
  fromEnum MOSQ_LOG_ALL         = 0xFFFF
  toEnum  0x00   = MOSQ_LOG_NONE
  toEnum  0x01   = MOSQ_LOG_INFO
  toEnum  0x02   = MOSQ_LOG_NOTICE
  toEnum  0x04   = MOSQ_LOG_WARNING
  toEnum  0x08   = MOSQ_LOG_ERR
  toEnum  0x10   = MOSQ_LOG_DEBUG
  toEnum  0x20   = MOSQ_LOG_SUBSCRIBE
  toEnum  0x40   = MOSQ_LOG_UNSUBSCRIBE
  toEnum  0x80   = MOSQ_LOG_WEBSOCKETS
  toEnum  0xFFFF = MOSQ_LOG_ALL


data MosquittoResult =
    MOSQ_ERR_CONN_PENDING
  | MOSQ_ERR_SUCCESS
  | MOSQ_ERR_NOMEM
  | MOSQ_ERR_PROTOCOL
  | MOSQ_ERR_INVAL
  | MOSQ_ERR_NO_CONN
  | MOSQ_ERR_CONN_REFUSED
  | MOSQ_ERR_NOT_FOUND
  | MOSQ_ERR_CONN_LOST
  | MOSQ_ERR_TLS
  | MOSQ_ERR_PAYLOAD_SIZE
  | MOSQ_ERR_NOT_SUPPORTED
  | MOSQ_ERR_AUTH
  | MOSQ_ERR_ACL_DENIED
  | MOSQ_ERR_UNKNOWN
  | MOSQ_ERR_ERRNO
  | MOSQ_ERR_EAI
  | MOSQ_ERR_PROXY
  deriving (Show, Eq, Read)

instance Enum MosquittoResult where
  toEnum (-1) = MOSQ_ERR_CONN_PENDING
  toEnum 0    = MOSQ_ERR_SUCCESS
  toEnum 1    = MOSQ_ERR_NOMEM
  toEnum 2    = MOSQ_ERR_PROTOCOL
  toEnum 3    = MOSQ_ERR_INVAL
  toEnum 4    = MOSQ_ERR_NO_CONN
  toEnum 5    = MOSQ_ERR_CONN_REFUSED
  toEnum 6    = MOSQ_ERR_NOT_FOUND
  toEnum 7    = MOSQ_ERR_CONN_LOST
  toEnum 8    = MOSQ_ERR_TLS
  toEnum 9    = MOSQ_ERR_PAYLOAD_SIZE
  toEnum 10   = MOSQ_ERR_NOT_SUPPORTED
  toEnum 11   = MOSQ_ERR_AUTH
  toEnum 12   = MOSQ_ERR_ACL_DENIED
  toEnum 13   = MOSQ_ERR_UNKNOWN
  toEnum 14   = MOSQ_ERR_ERRNO
  toEnum 15   = MOSQ_ERR_EAI
  toEnum 16   = MOSQ_ERR_PROXY
  fromEnum MOSQ_ERR_CONN_PENDING  = -1
  fromEnum MOSQ_ERR_SUCCESS       = 0
  fromEnum MOSQ_ERR_NOMEM         = 1
  fromEnum MOSQ_ERR_PROTOCOL      = 2
  fromEnum MOSQ_ERR_INVAL         = 3
  fromEnum MOSQ_ERR_NO_CONN       = 4
  fromEnum MOSQ_ERR_CONN_REFUSED  = 5
  fromEnum MOSQ_ERR_NOT_FOUND     = 6
  fromEnum MOSQ_ERR_CONN_LOST     = 7
  fromEnum MOSQ_ERR_TLS           = 8
  fromEnum MOSQ_ERR_PAYLOAD_SIZE  = 9
  fromEnum MOSQ_ERR_NOT_SUPPORTED = 10
  fromEnum MOSQ_ERR_AUTH          = 11
  fromEnum MOSQ_ERR_ACL_DENIED    = 12
  fromEnum MOSQ_ERR_UNKNOWN       = 13
  fromEnum MOSQ_ERR_ERRNO         = 14
  fromEnum MOSQ_ERR_EAI           = 15
  fromEnum MOSQ_ERR_PROXY         = 16
