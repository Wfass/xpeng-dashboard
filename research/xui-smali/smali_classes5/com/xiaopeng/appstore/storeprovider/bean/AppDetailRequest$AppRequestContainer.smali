.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;
.super Ljava/lang/Object;
.source "AppDetailRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRequestContainer"
.end annotation


# instance fields
.field private package_name:Ljava/lang/String;

.field private version_code:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;->package_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;->version_code:Ljava/lang/Long;

    return-object p1
.end method
