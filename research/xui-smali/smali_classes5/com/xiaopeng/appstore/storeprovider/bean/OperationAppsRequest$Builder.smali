.class public Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;
.super Ljava/lang/Object;
.source "OperationAppsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mDependParam:Ljava/lang/String;

.field private final mGroupType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "groupType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupType"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mGroupType:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mAppRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    .line 64
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mGroupType:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mDependParam:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAppRequest(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;
    .locals 1
    .param p1, "appRequest"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appRequest"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mAppRequests:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mAppRequests:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mAppRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public build()Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;-><init>(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)V

    return-object v0
.end method

.method public setDependParam(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;
    .locals 0
    .param p1, "dependParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependParam"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->mDependParam:Ljava/lang/String;

    .line 75
    return-object p0
.end method
