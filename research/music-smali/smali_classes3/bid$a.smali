.class Lbid$a;
.super Ljava/lang/Object;
.source "MusicControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lbid;

    invoke-direct {v0}, Lbid;-><init>()V

    sput-object v0, Lbid$a;->a:Lbid;

    return-void
.end method
