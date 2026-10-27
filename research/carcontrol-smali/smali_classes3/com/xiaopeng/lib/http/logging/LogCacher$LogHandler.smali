.class Lcom/xiaopeng/lib/http/logging/LogCacher$LogHandler;
.super Ljava/lang/Object;
.source "LogCacher.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/LogCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/http/logging/LogCacher;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/http/logging/LogCacher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/LogCacher$LogHandler;->this$0:Lcom/xiaopeng/lib/http/logging/LogCacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/http/logging/LogCacher;Lcom/xiaopeng/lib/http/logging/LogCacher$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/http/logging/LogCacher$LogHandler;-><init>(Lcom/xiaopeng/lib/http/logging/LogCacher;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "HttpsUtils"

    .line 76
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
