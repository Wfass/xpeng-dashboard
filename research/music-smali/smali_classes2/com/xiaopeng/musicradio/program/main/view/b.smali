.class public Lcom/xiaopeng/musicradio/program/main/view/b;
.super Lbtx;
.source "ProgramMainLayoutPreload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/program/main/view/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lbtx;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/program/main/view/b;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/musicradio/program/main/view/b$a;->a:Lcom/xiaopeng/musicradio/program/main/view/b;

    return-object v0
.end method


# virtual methods
.method protected b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->fragment_program_main:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
