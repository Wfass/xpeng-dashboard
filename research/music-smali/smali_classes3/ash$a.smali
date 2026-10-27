.class public Lash$a;
.super Ljava/lang/Object;
.source "ProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;II)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lash$a;->a:Ljava/util/List;

    .line 23
    iput p2, p0, Lash$a;->b:I

    .line 24
    iput p3, p0, Lash$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lash$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 32
    iget v0, p0, Lash$a;->b:I

    return v0
.end method
