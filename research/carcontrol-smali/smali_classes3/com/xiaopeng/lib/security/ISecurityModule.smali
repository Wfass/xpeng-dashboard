.class public interface abstract Lcom/xiaopeng/lib/security/ISecurityModule;
.super Ljava/lang/Object;
.source "ISecurityModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;,
        Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;
    }
.end annotation


# virtual methods
.method public abstract asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "uid",
            "ids",
            "token",
            "runnable"
        }
    .end annotation
.end method

.method public abstract asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ids",
            "token",
            "runnable"
        }
    .end annotation
.end method

.method public abstract asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "uid",
            "ids",
            "token",
            "listener"
        }
    .end annotation
.end method

.method public abstract asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ids",
            "token",
            "listener"
        }
    .end annotation
.end method

.method public abstract buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "data"
        }
    .end annotation
.end method

.method public abstract clearIndividualData()V
.end method

.method public abstract cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "Iv",
            "data"
        }
    .end annotation
.end method

.method public abstract cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "Iv",
            "data"
        }
    .end annotation
.end method

.method public abstract decode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract deleteString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract generateIndividualDataForServer()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
.end method

.method public abstract getIndividualFlag()Ljava/lang/String;
.end method

.method public abstract getIndividualRequestStr()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract individualWithData(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isInitAndIndivSuccess()Z
.end method

.method public abstract isInitSuccess()Z
.end method

.method public abstract saveIndividualFlag()V
.end method

.method public abstract saveMCUSecurityKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidListener"
        }
    .end annotation
.end method
