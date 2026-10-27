.class Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;
.super Ljava/lang/Object;
.source "LogCacher.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/LogCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field code:I

.field context:Lcom/xiaopeng/lib/http/logging/LogCacher;

.field msgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/http/logging/LogCacher;)V
    .locals 1
    .param p1, "context"    # Lcom/xiaopeng/lib/http/logging/LogCacher;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->msgs:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->context:Lcom/xiaopeng/lib/http/logging/LogCacher;

    .line 87
    return-void
.end method


# virtual methods
.method public code(I)V
    .locals 0
    .param p1, "code"    # I

    .line 91
    iput p1, p0, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->code:I

    .line 92
    return-void
.end method

.method public end()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->context:Lcom/xiaopeng/lib/http/logging/LogCacher;

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/http/logging/LogCacher;->access$100(Lcom/xiaopeng/lib/http/logging/LogCacher;Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;)V

    .line 102
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->msgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
