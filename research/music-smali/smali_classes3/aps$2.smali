.class Laps$2;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laps;->e(Landroid/content/Context;Lapn;)V
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

    .line 144
    iput-object p1, p0, Laps$2;->c:Laps;

    iput-object p2, p0, Laps$2;->a:Landroid/content/Context;

    iput-object p3, p0, Laps$2;->b:Lapn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Laps$2;->c:Laps;

    iget-object v1, p0, Laps$2;->a:Landroid/content/Context;

    iget-object v2, p0, Laps$2;->b:Lapn;

    invoke-static {v0, v1, v2}, Laps;->a(Laps;Landroid/content/Context;Lapn;)V

    return-void
.end method
