.class Lme/yokeyword/fragmentation/h$1;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;Ljava/lang/Runnable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$1;->b:Lme/yokeyword/fragmentation/h;

    iput-object p2, p0, Lme/yokeyword/fragmentation/h$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcdb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 76
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
