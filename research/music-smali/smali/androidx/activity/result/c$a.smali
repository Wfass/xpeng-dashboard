.class Landroidx/activity/result/c$a;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Landroidx/activity/result/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field final b:Lc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc<",
            "*TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/activity/result/a;Lc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/a<",
            "TO;>;",
            "Lc<",
            "*TO;>;)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Landroidx/activity/result/c$a;->a:Landroidx/activity/result/a;

    .line 441
    iput-object p2, p0, Landroidx/activity/result/c$a;->b:Lc;

    return-void
.end method
