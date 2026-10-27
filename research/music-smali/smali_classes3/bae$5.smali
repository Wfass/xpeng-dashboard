.class Lbae$5;
.super Ljava/lang/Object;
.source "MusicInfoOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbae;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbae;


# direct methods
.method constructor <init>(Lbae;Ljava/util/List;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lbae$5;->b:Lbae;

    iput-object p2, p0, Lbae$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    :try_start_0
    iget-object v0, p0, Lbae$5;->b:Lbae;

    iget-object v1, p0, Lbae$5;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lbae;->b(Lbae;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MusicInfoOperation"

    const-string v2, "deleteAsync"

    .line 247
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
