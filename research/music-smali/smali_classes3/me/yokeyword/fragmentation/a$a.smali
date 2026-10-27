.class final Lme/yokeyword/fragmentation/a$a;
.super Lme/yokeyword/fragmentation/a;
.source "ExtraTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yokeyword/fragmentation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lme/yokeyword/fragmentation/d;",
        ">",
        "Lme/yokeyword/fragmentation/a;"
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/FragmentActivity;

.field private b:Lme/yokeyword/fragmentation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Landroidx/fragment/app/Fragment;

.field private d:Lme/yokeyword/fragmentation/h;

.field private e:Z

.field private f:Lme/yokeyword/fragmentation/helper/internal/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "TT;",
            "Lme/yokeyword/fragmentation/h;",
            "Z)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lme/yokeyword/fragmentation/a;-><init>()V

    .line 138
    iput-object p1, p0, Lme/yokeyword/fragmentation/a$a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 139
    iput-object p2, p0, Lme/yokeyword/fragmentation/a$a;->b:Lme/yokeyword/fragmentation/d;

    .line 140
    check-cast p2, Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lme/yokeyword/fragmentation/a$a;->c:Landroidx/fragment/app/Fragment;

    .line 141
    iput-object p3, p0, Lme/yokeyword/fragmentation/a$a;->d:Lme/yokeyword/fragmentation/h;

    .line 142
    iput-boolean p4, p0, Lme/yokeyword/fragmentation/a$a;->e:Z

    .line 143
    new-instance p1, Lme/yokeyword/fragmentation/helper/internal/b;

    invoke-direct {p1}, Lme/yokeyword/fragmentation/helper/internal/b;-><init>()V

    iput-object p1, p0, Lme/yokeyword/fragmentation/a$a;->f:Lme/yokeyword/fragmentation/helper/internal/b;

    return-void
.end method
