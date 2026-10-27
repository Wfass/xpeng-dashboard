.class public Lbts;
.super Ljava/lang/Object;
.source "FormatData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbts$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbts$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lbts;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lbts;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbts$a;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lbts;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbts$a;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lbts;->b:Ljava/util/List;

    return-object v0
.end method
