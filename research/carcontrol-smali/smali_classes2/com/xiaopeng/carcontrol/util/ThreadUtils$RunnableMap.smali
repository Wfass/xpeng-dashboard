.class Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/util/ThreadUtils;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "type"
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;->mRunnable:Ljava/lang/Runnable;

    .line 257
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;->mType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
