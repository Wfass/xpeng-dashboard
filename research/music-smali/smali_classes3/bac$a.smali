.class Lbac$a;
.super Ljava/lang/Object;
.source "MusicCustomOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lbac;

    invoke-direct {v0}, Lbac;-><init>()V

    sput-object v0, Lbac$a;->a:Lbac;

    return-void
.end method
