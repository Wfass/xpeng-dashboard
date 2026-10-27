.class Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableMap"
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "type"    # Ljava/lang/Integer;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->mRunnable:Ljava/lang/Runnable;

    .line 392
    iput-object p2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->mType:Ljava/lang/Integer;

    .line 393
    return-void
.end method


# virtual methods
.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
