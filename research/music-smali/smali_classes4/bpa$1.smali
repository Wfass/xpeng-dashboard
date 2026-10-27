.class Lbpa$1;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpa;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lboy;

.field final synthetic b:Lbpa;


# direct methods
.method constructor <init>(Lbpa;Lboy;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lbpa$1;->b:Lbpa;

    iput-object p2, p0, Lbpa$1;->a:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lbpa$1;->a:Lboy;

    invoke-virtual {v0}, Lboy;->doCommand()V

    return-void
.end method
