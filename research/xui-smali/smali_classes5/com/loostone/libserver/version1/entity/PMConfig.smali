.class public Lcom/loostone/libserver/version1/entity/PMConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PRIVATE_KEY:Ljava/lang/String; = "ASDFGHJKL"

.field public static PRIVATE_KEY_CONFIG:Ljava/lang/String; = "-----BEGIN RSA PRIVATE KEY-----\nMIIBOQIBAAJBAIh5EbNbgZOOo0RVY+pyftMaQpLAPtGtqBjLUcJl20G8l2YsxUne\n5JI9ssdefvQdXozjmkmE0lRDY+DsL6SbI5UCAwEAAQJAFoVcLWv5Wx9bxAgPX/4a\n/b1EpTECbNmqdsT+rgTfBN7bAR0j7OzqwwlaxYjQNkjKXG+swYCp0SFMG4y0afOj\nwQIhANjo2Soez+BVOZVouMthOr+ilBornb4LZnxnuFg4tGFFAiEAoRFEDa+kh2ZF\nhZJCbpg8GtmxWeJcUDNLy+B7lrCd1hECIDKkYpdv7C6/FxuoAIUTZUj6p0NY7ZJC\nTSI8gRCv5IVVAiA8pwrQeI7lae7OIMihavRfTBDL/0Cx9s8ZJByGH1YgcQIgI3LH\nv8wP6fHbqFxjSzbee0iKrd+ufArwa8Gs10CPWcU=\n-----END RSA PRIVATE KEY-----"

.field public static PUBLIC_KEY:Ljava/lang/String; = "ZXCVBNM"

.field public static PUBLIC_KEY_CONFIG:Ljava/lang/String; = "-----BEGIN PUBLIC KEY-----\nMFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAIh5EbNbgZOOo0RVY+pyftMaQpLAPtGt\nqBjLUcJl20G8l2YsxUne5JI9ssdefvQdXozjmkmE0lRDY+DsL6SbI5UCAwEAAQ==\n-----END PUBLIC KEY-----"

.field public static a:Ljava/lang/String; = "0123456789"

.field public static b:Ljava/lang/String; = "12345678"

.field public static c:Ljava/lang/String; = "1234567890987654321234567"

.field public static d:I = 0x9a3d847

.field public static e:I = 0x5a693c87


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIv()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libserver/version1/entity/PMConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libserver/version1/entity/PMConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getMixerMask()I
    .locals 1

    .line 1
    sget v0, Lcom/loostone/libserver/version1/entity/PMConfig;->d:I

    return v0
.end method

.method public static getPowerMask()I
    .locals 1

    .line 1
    sget v0, Lcom/loostone/libserver/version1/entity/PMConfig;->e:I

    return v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libserver/version1/entity/PMConfig;->c:Ljava/lang/String;

    return-object v0
.end method
