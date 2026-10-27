.class Lbhg$a;
.super Ljava/lang/Object;
.source "AudioDownModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbhg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lbhg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbhg;-><init>(Lbhg$1;)V

    sput-object v0, Lbhg$a;->a:Lbhg;

    return-void
.end method
