.class Laps$1;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laps;->b(Landroid/content/Context;Lapn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lapn;

.field final synthetic c:Laps;


# direct methods
.method constructor <init>(Laps;Landroid/content/Context;Lapn;)V
    .locals 0

    .line 105
    iput-object p1, p0, Laps$1;->c:Laps;

    iput-object p2, p0, Laps$1;->a:Landroid/content/Context;

    iput-object p3, p0, Laps$1;->b:Lapn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Laps$1;->a:Landroid/content/Context;

    iget-object v1, p0, Laps$1;->b:Lapn;

    iget-object v1, v1, Lapn;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lapp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-static {}, Laps;->c()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Laps$1;->b:Lapn;

    iget-object v2, v2, Lapn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
