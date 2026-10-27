.class Lbdh$a;
.super Ljava/lang/Object;
.source "ReplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lbdh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdh;-><init>(Lbdh$1;)V

    sput-object v0, Lbdh$a;->a:Lbdh;

    return-void
.end method
