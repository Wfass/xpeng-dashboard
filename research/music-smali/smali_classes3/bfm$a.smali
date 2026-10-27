.class Lbfm$a;
.super Ljava/lang/Object;
.source "DailyDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbfm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lbfm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbfm;-><init>(Lbfm$1;)V

    sput-object v0, Lbfm$a;->a:Lbfm;

    return-void
.end method
