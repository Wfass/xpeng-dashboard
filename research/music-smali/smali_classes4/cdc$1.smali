.class Lcdc$1;
.super Ljava/lang/Object;
.source "ActionQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcdc;->a(Lcdb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcdb;

.field final synthetic b:Lcdc;


# direct methods
.method constructor <init>(Lcdc;Lcdb;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcdc$1;->b:Lcdc;

    iput-object p2, p0, Lcdc$1;->a:Lcdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcdc$1;->b:Lcdc;

    iget-object v1, p0, Lcdc$1;->a:Lcdb;

    invoke-static {v0, v1}, Lcdc;->a(Lcdc;Lcdb;)V

    return-void
.end method
