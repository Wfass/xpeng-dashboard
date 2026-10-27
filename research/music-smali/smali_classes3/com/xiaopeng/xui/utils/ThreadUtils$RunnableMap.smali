.class Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableMap"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mType:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->mRunnable:Ljava/lang/Runnable;

    .line 276
    iput-object p2, p0, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->mType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
