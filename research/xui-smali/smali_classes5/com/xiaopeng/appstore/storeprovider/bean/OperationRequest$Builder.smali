.class public Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;
.super Ljava/lang/Object;
.source "OperationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mOperationAppsRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationAppsRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "operationAppsRequests":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;->mOperationAppsRequests:Ljava/util/List;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;->mOperationAppsRequests:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;-><init>(Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;)V

    return-object v0
.end method
