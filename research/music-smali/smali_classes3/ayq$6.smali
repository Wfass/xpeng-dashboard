.class Layq$6;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Layq;


# direct methods
.method constructor <init>(Layq;Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Layq$6;->b:Layq;

    iput-object p2, p0, Layq$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 507
    iget-object v0, p0, Layq$6;->b:Layq;

    iget-object v1, p0, Layq$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Layq;->b(Ljava/lang/String;)I

    move-result v0

    .line 508
    iget-object v1, p0, Layq$6;->b:Layq;

    iget-object v2, p0, Layq$6;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Layq;->a(Ljava/lang/String;I)V

    return-void
.end method
