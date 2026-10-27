.class public Lbfz;
.super Ljava/lang/Object;
.source "MsRmCategoryDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfz$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbfz$a;)V
    .locals 2

    .line 14
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    new-instance v1, Lbfz$1;

    invoke-direct {v1, p0, p1}, Lbfz$1;-><init>(Lbfz;Lbfz$a;)V

    invoke-virtual {v0, v1}, Lasp;->b(Lbkv;)V

    return-void
.end method
