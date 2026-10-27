.class Lawm$a;
.super Ljava/lang/Object;
.source "HistoryLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lawm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lawm;

    invoke-direct {v0}, Lawm;-><init>()V

    sput-object v0, Lawm$a;->a:Lawm;

    return-void
.end method
