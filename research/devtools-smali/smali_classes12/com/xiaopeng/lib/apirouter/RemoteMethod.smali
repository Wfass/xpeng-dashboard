.class public Lcom/xiaopeng/lib/apirouter/RemoteMethod;
.super Ljava/lang/Object;
.source "RemoteMethod.java"


# instance fields
.field private mId:I

.field private mMethodName:Ljava/lang/String;

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->mMethodName:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->mId:I

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->mParamsList:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->mId:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->mMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->mParamsList:Ljava/util/List;

    return-object v0
.end method
