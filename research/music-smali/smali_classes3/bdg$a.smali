.class Lbdg$a;
.super Ljava/lang/Object;
.source "ReplayDownMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lbdg;

    invoke-direct {v0}, Lbdg;-><init>()V

    sput-object v0, Lbdg$a;->a:Lbdg;

    return-void
.end method
