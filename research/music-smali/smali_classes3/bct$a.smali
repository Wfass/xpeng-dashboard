.class Lbct$a;
.super Ljava/lang/Object;
.source "NeteaseFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lbct;

    invoke-direct {v0}, Lbct;-><init>()V

    sput-object v0, Lbct$a;->a:Lbct;

    return-void
.end method
