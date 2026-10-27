.class Lbmr$a;
.super Ljava/lang/Object;
.source "ProgramDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbmr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lbmr;

    invoke-direct {v0}, Lbmr;-><init>()V

    sput-object v0, Lbmr$a;->a:Lbmr;

    return-void
.end method
