.class Lbee$2;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbee;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbee;


# direct methods
.method constructor <init>(Lbee;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lbee$2;->a:Lbee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataFetch:isReadingBinded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XmlyManagerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lbee$2;->a:Lbee;

    invoke-virtual {v0}, Lbee;->d()V

    .line 84
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->k()V

    :cond_0
    return-void
.end method
