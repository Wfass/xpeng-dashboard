.class Lbhi$1;
.super Ljava/lang/Object;
.source "NeteaseDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhi;


# direct methods
.method constructor <init>(Lbhi;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbhi$1;->a:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    iget-object v0, p0, Lbhi$1;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->j()V

    return-void
.end method
