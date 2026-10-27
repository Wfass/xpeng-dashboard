.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;
.super Ljava/lang/Object;
.source "AppDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

.field private final request:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->request:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;

    .line 28
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

    invoke-static {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;->access$002(Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->request:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;->setParam(Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;)V

    .line 31
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->request:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;

    return-object v0
.end method

.method public setVersionCode(Ljava/lang/Long;)Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;
    .locals 1
    .param p1, "versionCode"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;->param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

    invoke-static {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;->access$102(Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;Ljava/lang/Long;)Ljava/lang/Long;

    .line 35
    return-object p0
.end method
