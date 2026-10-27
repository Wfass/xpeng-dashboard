.class public Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;
.super Ljava/lang/Object;
.source "HttpQueryParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;
    }
.end annotation


# instance fields
.field mBody:Ljava/lang/String;

.field mCallback:Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

.field final mMethod:I

.field final mPath:Ljava/lang/String;

.field mQueryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "path"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mMethod:I

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mPath:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;
    .locals 1
    .param p0, "method"    # I
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "path"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
