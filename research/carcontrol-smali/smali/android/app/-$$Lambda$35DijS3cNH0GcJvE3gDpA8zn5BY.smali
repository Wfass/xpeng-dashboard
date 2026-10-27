.class public final synthetic Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;

    invoke-direct {v0}, Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;-><init>()V

    sput-object v0, Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;->INSTANCE:Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/util/ArraySet;

    invoke-interface {p1, p2, p3}, Landroid/app/UiModeManager$OnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/Set;)V

    return-void
.end method
