.class Lbdk$a;
.super Ljava/lang/Object;
.source "SearchAndHistoryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lbdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdk;-><init>(Lbdk$1;)V

    sput-object v0, Lbdk$a;->a:Lbdk;

    return-void
.end method
