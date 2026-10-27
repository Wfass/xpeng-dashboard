.class public Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;
.super Ljava/lang/Object;
.source "HttpQueryParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBody:Ljava/lang/String;

.field private mCallback:Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

.field private final mMethod:I

.field private final mPath:Ljava/lang/String;

.field private mQueryParams:Ljava/util/Map;
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
.method public constructor <init>(ILjava/lang/String;)V
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mMethod:I

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mPath:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;
    .locals 3

    .line 56
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mMethod:I

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;-><init>(ILjava/lang/String;)V

    .line 57
    .local v0, "query":Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mCallback:Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

    iput-object v1, v0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mCallback:Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mQueryParams:Ljava/util/Map;

    iput-object v1, v0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mQueryParams:Ljava/util/Map;

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mBody:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mBody:Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mBody:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mCallback:Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

    .line 42
    return-object p0
.end method

.method public setQueryParams(Ljava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queryParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;"
        }
    .end annotation

    .line 46
    .local p1, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->mQueryParams:Ljava/util/Map;

    .line 47
    return-object p0
.end method
