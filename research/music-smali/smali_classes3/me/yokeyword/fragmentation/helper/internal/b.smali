.class public final Lme/yokeyword/fragmentation/helper/internal/b;
.super Ljava/lang/Object;
.source "TransactionRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yokeyword/fragmentation/helper/internal/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/fragmentation/helper/internal/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lme/yokeyword/fragmentation/helper/internal/b;->b:I

    .line 13
    iput v0, p0, Lme/yokeyword/fragmentation/helper/internal/b;->c:I

    .line 14
    iput v0, p0, Lme/yokeyword/fragmentation/helper/internal/b;->d:I

    .line 15
    iput v0, p0, Lme/yokeyword/fragmentation/helper/internal/b;->e:I

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/b;->f:Z

    return-void
.end method
