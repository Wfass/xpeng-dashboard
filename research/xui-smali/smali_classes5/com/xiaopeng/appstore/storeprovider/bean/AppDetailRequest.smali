.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;
.super Ljava/lang/Object;
.source "AppDetailRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$Builder;,
        Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;
    }
.end annotation


# instance fields
.field private param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setParam(Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;)V
    .locals 0
    .param p1, "param"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest;->param:Lcom/xiaopeng/appstore/storeprovider/bean/AppDetailRequest$AppRequestContainer;

    .line 15
    return-void
.end method
