.class Lbgr$b;
.super Ljava/lang/Object;
.source "DolbyDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lbgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lbgr;

    invoke-direct {v0}, Lbgr;-><init>()V

    sput-object v0, Lbgr$b;->a:Lbgr;

    return-void
.end method
