.class public Lcom/lzy/okgo/cookie/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COOKIE:Ljava/lang/String; = "cookie"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private transient clientCookie:Lokhttp3/Cookie;

.field private transient cookie:Lokhttp3/Cookie;

.field public domain:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Cookie;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    .line 58
    iput-object p1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p2}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 179
    .local v3, "element":B
    and-int/lit16 v4, v3, 0xff

    .line 180
    .local v4, "v":I
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 181
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .end local v3    # "element":B
    .end local v4    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToCookie([B)Lokhttp3/Cookie;
    .locals 4
    .param p0, "bytes"    # [B

    .line 159
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 160
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 162
    .local v1, "cookie":Lokhttp3/Cookie;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v2, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-virtual {v3}, Lcom/lzy/okgo/cookie/SerializableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 166
    .end local v2    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static cookieToBytes(Ljava/lang/String;Lokhttp3/Cookie;)[B
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .line 135
    new-instance v0, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cookie/SerializableCookie;-><init>(Ljava/lang/String;Lokhttp3/Cookie;)V

    .line 136
    .local v0, "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    .local v2, "outputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v2    # "outputStream":Ljava/io/ObjectOutputStream;
    nop

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 142
    const/4 v3, 0x0

    return-object v3
.end method

.method public static decodeCookie(Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 2
    .param p0, "cookieString"    # Ljava/lang/String;

    .line 154
    invoke-static {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 155
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/lzy/okgo/cookie/SerializableCookie;->bytesToCookie([B)Lokhttp3/Cookie;

    move-result-object v1

    return-object v1
.end method

.method public static encodeCookie(Ljava/lang/String;Lokhttp3/Cookie;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .line 129
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    invoke-static {p0, p1}, Lcom/lzy/okgo/cookie/SerializableCookie;->cookieToBytes(Ljava/lang/String;Lokhttp3/Cookie;)[B

    move-result-object v0

    .line 131
    .local v0, "cookieBytes":[B
    invoke-static {v0}, Lcom/lzy/okgo/cookie/SerializableCookie;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getContentValues(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "serializableCookie"    # Lcom/lzy/okgo/cookie/SerializableCookie;

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "host"

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "name"

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "domain"

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "cookie"

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzy/okgo/cookie/SerializableCookie;->cookieToBytes(Ljava/lang/String;Lokhttp3/Cookie;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 119
    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 197
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 198
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 197
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 200
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 107
    const-string v0, "host"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "host":Ljava/lang/String;
    const-string v1, "cookie"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 109
    .local v1, "cookieBytes":[B
    invoke-static {v1}, Lcom/lzy/okgo/cookie/SerializableCookie;->bytesToCookie([B)Lokhttp3/Cookie;

    move-result-object v2

    .line 110
    .local v2, "cookie":Lokhttp3/Cookie;
    new-instance v3, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-direct {v3, v0, v2}, Lcom/lzy/okgo/cookie/SerializableCookie;-><init>(Ljava/lang/String;Lokhttp3/Cookie;)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    .line 89
    .local v2, "expiresAt":J
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    .line 92
    .local v6, "secure":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    .line 93
    .local v7, "httpOnly":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    .line 94
    .local v8, "hostOnly":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v9

    .line 95
    .local v9, "persistent":Z
    new-instance v10, Lokhttp3/Cookie$Builder;

    invoke-direct {v10}, Lokhttp3/Cookie$Builder;-><init>()V

    .line 96
    .local v10, "builder":Lokhttp3/Cookie$Builder;
    invoke-virtual {v10, v0}, Lokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v10

    .line 97
    invoke-virtual {v10, v1}, Lokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v10

    .line 98
    invoke-virtual {v10, v2, v3}, Lokhttp3/Cookie$Builder;->expiresAt(J)Lokhttp3/Cookie$Builder;

    move-result-object v10

    .line 99
    if-eqz v8, :cond_0

    invoke-virtual {v10, v4}, Lokhttp3/Cookie$Builder;->hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v4}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v11

    :goto_0
    move-object v10, v11

    .line 100
    invoke-virtual {v10, v5}, Lokhttp3/Cookie$Builder;->path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v10

    .line 101
    if-eqz v6, :cond_1

    invoke-virtual {v10}, Lokhttp3/Cookie$Builder;->secure()Lokhttp3/Cookie$Builder;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v10

    :goto_1
    move-object v10, v11

    .line 102
    if-eqz v7, :cond_2

    invoke-virtual {v10}, Lokhttp3/Cookie$Builder;->httpOnly()Lokhttp3/Cookie$Builder;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v10

    :goto_2
    move-object v10, v11

    .line 103
    invoke-virtual {v10}, Lokhttp3/Cookie$Builder;->build()Lokhttp3/Cookie;

    move-result-object v11

    iput-object v11, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->clientCookie:Lokhttp3/Cookie;

    .line 104
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 73
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 76
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->secure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 79
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->httpOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 80
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 81
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->persistent()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 209
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/lzy/okgo/cookie/SerializableCookie;

    .line 211
    .local v2, "that":Lcom/lzy/okgo/cookie/SerializableCookie;
    iget-object v3, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    iget-object v4, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 213
    :cond_5
    iget-object v3, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    iget-object v1, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0

    .line 207
    .end local v2    # "that":Lcom/lzy/okgo/cookie/SerializableCookie;
    :cond_8
    :goto_3
    return v1
.end method

.method public getCookie()Lokhttp3/Cookie;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    .line 65
    .local v0, "bestCookie":Lokhttp3/Cookie;
    iget-object v1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->clientCookie:Lokhttp3/Cookie;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->clientCookie:Lokhttp3/Cookie;

    .line 68
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 219
    .local v0, "result":I
    :goto_0
    const/16 v2, 0x1f

    mul-int v3, v2, v0

    iget-object v4, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    .line 220
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int/2addr v2, v3

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    :cond_2
    add-int/2addr v2, v1

    .line 221
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method
