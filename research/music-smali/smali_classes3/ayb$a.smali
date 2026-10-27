.class Layb$a;
.super Ljava/lang/Object;
.source "MusicDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Layb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Layb;

    invoke-direct {v0}, Layb;-><init>()V

    sput-object v0, Layb$a;->a:Layb;

    return-void
.end method
