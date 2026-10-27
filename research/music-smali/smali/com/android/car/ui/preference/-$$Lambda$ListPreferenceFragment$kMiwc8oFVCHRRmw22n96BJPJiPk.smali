.class public final synthetic Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/ui/preference/ListPreferenceFragment;

.field private final synthetic f$1:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/preference/ListPreferenceFragment;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;->f$0:Lcom/android/car/ui/preference/ListPreferenceFragment;

    iput-object p2, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;->f$1:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;->f$0:Lcom/android/car/ui/preference/ListPreferenceFragment;

    iget-object v1, p0, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;->f$1:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/ListPreferenceFragment;->lambda$onViewCreated$1$ListPreferenceFragment(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    return-void
.end method
