.class Lbmn$a;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbmn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lbmn;

    invoke-direct {v0}, Lbmn;-><init>()V

    sput-object v0, Lbmn$a;->a:Lbmn;

    return-void
.end method
