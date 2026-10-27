.class public interface abstract Lcom/xiaopeng/appstore/storeprovider/c;
.super Ljava/lang/Object;
.source "IResourceServiceV2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/c$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
.end method

.method public abstract a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
.end method

.method public abstract a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
.end method

.method public abstract a([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
.end method

.method public abstract a(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/b;)V
.end method

.method public abstract a(Lcom/xiaopeng/appstore/storeprovider/b;)V
.end method
