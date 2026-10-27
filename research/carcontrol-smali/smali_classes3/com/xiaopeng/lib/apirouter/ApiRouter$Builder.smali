.class public Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;
.super Ljava/lang/Object;
.source "ApiRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/apirouter/ApiRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blob:[B

.field private isOneWay:Z

.field private targetUid:I

.field private uri:Landroid/net/Uri;

.field private withBlob:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->withBlob:Z

    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->blob:[B

    .line 172
    iput-boolean v0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->isOneWay:Z

    .line 173
    iput v0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->targetUid:I

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->uri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Landroid/net/Uri;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->withBlob:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)[B
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->blob:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->isOneWay:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)I
    .locals 0

    .line 168
    iget p0, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->targetUid:I

    return p0
.end method


# virtual methods
.method public setBlob([B)Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->blob:[B

    return-object p0
.end method

.method public setOneWay(Z)Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->isOneWay:Z

    return-object p0
.end method

.method public setTargetUid(I)Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;
    .locals 0

    .line 195
    iput p1, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->targetUid:I

    return-object p0
.end method

.method public setWithBlob(Z)Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->withBlob:Z

    return-object p0
.end method
