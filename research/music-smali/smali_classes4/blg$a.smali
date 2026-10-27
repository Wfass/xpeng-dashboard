.class Lblg$a;
.super Ljava/lang/Object;
.source "PlayerUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lblg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lblg;

    invoke-direct {v0}, Lblg;-><init>()V

    sput-object v0, Lblg$a;->a:Lblg;

    return-void
.end method
