.class Lme/yokeyword/fragmentation/h$3;
.super Ljava/lang/Object;
.source "TransactionDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/yokeyword/fragmentation/d;

.field final synthetic b:Lme/yokeyword/fragmentation/d;

.field final synthetic c:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$3;->c:Lme/yokeyword/fragmentation/h;

    iput-object p2, p0, Lme/yokeyword/fragmentation/h$3;->a:Lme/yokeyword/fragmentation/d;

    iput-object p3, p0, Lme/yokeyword/fragmentation/h$3;->b:Lme/yokeyword/fragmentation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$3;->c:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$3;->a:Lme/yokeyword/fragmentation/d;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$3;->b:Lme/yokeyword/fragmentation/d;

    invoke-static {v0, v1, v2}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method
