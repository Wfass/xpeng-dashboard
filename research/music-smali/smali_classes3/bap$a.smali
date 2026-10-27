.class Lbap$a;
.super Ljava/lang/Object;
.source "KugouHistoryMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lbap;

    invoke-direct {v0}, Lbap;-><init>()V

    sput-object v0, Lbap$a;->a:Lbap;

    return-void
.end method
